// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_response_managedidentities_v1alpha1.dart';

/// Result data returned by getDomain.
class GetDomainManagedidentitiesV1alpha1Result {
  /// Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  final bool auditLogsEnabled;
  /// Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Network can be added using UpdateDomain later. Domain is only available on network part of authorized_networks. Caller needs to make sure that CIDR subnets do not overlap between networks, else domain creation will fail.
  final List<String> authorizedNetworks;
  /// The time the instance was created. Synthetic field is populated automatically by CCFE. go/ccfe-synthetic-field-user-guide
  final String createTime;
  /// Fully-qualified domain name of the exposed domain used by clients to connect to the service. Similar to what would be chosen for an Active Directory that is set up on an internal network.
  final String fqdn;
  /// Optional. Resource labels to represent user provided metadata
  final Map<String, String> labels;
  /// Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  final List<String> locations;
  /// Optional. Name of customer-visible admin used to perform Active Directory operations. If not specified `setupadmin` would be used.
  final String managedIdentitiesAdminName;
  /// Unique name of the domain in this scope including projects and location using the form: `projects/{project_id}/locations/global/domains/{domain_name}`.
  final String name;
  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  final String reservedIpRange;
  /// The current state of this domain.
  final String state;
  /// Additional information about the current status of this domain, if available.
  final String statusMessage;
  /// The current trusts associated with the domain.
  final List<TrustResponseManagedidentitiesV1alpha1> trusts;
  /// Last update time. Synthetic field is populated automatically by CCFE.
  final String updateTime;

  /// Creates a new [GetDomainManagedidentitiesV1alpha1Result].
  /// [auditLogsEnabled] Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  /// [authorizedNetworks] Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Network can be added using UpdateDomain later. Domain is only available on network part of authorized_networks. Caller needs to make sure that CIDR subnets do not overlap between networks, else domain creation will fail.
  /// [createTime] The time the instance was created. Synthetic field is populated automatically by CCFE. go/ccfe-synthetic-field-user-guide
  /// [fqdn] Fully-qualified domain name of the exposed domain used by clients to connect to the service. Similar to what would be chosen for an Active Directory that is set up on an internal network.
  /// [labels] Optional. Resource labels to represent user provided metadata
  /// [locations] Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  /// [managedIdentitiesAdminName] Optional. Name of customer-visible admin used to perform Active Directory operations. If not specified `setupadmin` would be used.
  /// [name] Unique name of the domain in this scope including projects and location using the form: `projects/{project_id}/locations/global/domains/{domain_name}`.
  /// [reservedIpRange] The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  /// [state] The current state of this domain.
  /// [statusMessage] Additional information about the current status of this domain, if available.
  /// [trusts] The current trusts associated with the domain.
  /// [updateTime] Last update time. Synthetic field is populated automatically by CCFE.
  const GetDomainManagedidentitiesV1alpha1Result({
    required this.auditLogsEnabled,
    required this.authorizedNetworks,
    required this.createTime,
    required this.fqdn,
    required this.labels,
    required this.locations,
    required this.managedIdentitiesAdminName,
    required this.name,
    required this.reservedIpRange,
    required this.state,
    required this.statusMessage,
    required this.trusts,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogsEnabled': auditLogsEnabled,
      'authorizedNetworks': authorizedNetworks,
      'createTime': createTime,
      'fqdn': fqdn,
      'labels': labels,
      'locations': locations,
      'managedIdentitiesAdminName': managedIdentitiesAdminName,
      'name': name,
      'reservedIpRange': reservedIpRange,
      'state': state,
      'statusMessage': statusMessage,
      'trusts': pulumi.Input.encodeList<TrustResponseManagedidentitiesV1alpha1, Map<String, dynamic>>(trusts, (value) => value.toMap()),
      'updateTime': updateTime,
    };
  }

  factory GetDomainManagedidentitiesV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetDomainManagedidentitiesV1alpha1Result(
      auditLogsEnabled: map['auditLogsEnabled'] as bool,
      authorizedNetworks: (map['authorizedNetworks'] as List).cast<String>(),
      createTime: map['createTime'] as String,
      fqdn: map['fqdn'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      locations: (map['locations'] as List).cast<String>(),
      managedIdentitiesAdminName: map['managedIdentitiesAdminName'] as String,
      name: map['name'] as String,
      reservedIpRange: map['reservedIpRange'] as String,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      trusts: pulumi.Input.decodeList<TrustResponseManagedidentitiesV1alpha1>(map['trusts']!, (value) => TrustResponseManagedidentitiesV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}

