// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_casb_integration_authorization_link.dart';
import 'get_zero_trust_casb_integration_filter.dart';

/// Result data returned by getZeroTrustCasbIntegration.
class GetZeroTrustCasbIntegrationResult {
  final String? accountId;
  final Map<String, String>? application;
  /// The integration's authentication method.
  final Map<String, String>? authMethod;
  /// Authorization link for the integration.
  final GetZeroTrustCasbIntegrationAuthorizationLink? authorizationLink;
  /// When the integration was created.
  final String? created;
  /// Credentials expiry time.
  final String? credentialsExpiry;
  /// DLP Profiles enabled for the integration.
  final List<String>? dlpProfiles;
  final GetZeroTrustCasbIntegrationFilter? filter;
  /// Health details with remediation hints.
  final List<Map<String, String>>? healthDetails;
  /// Integration ID to look up. Exactly one of `id` or `filter` must be configured.
  final String? id;
  /// Whether the user paused the integration.
  final bool? isPaused;
  /// Last time the integration was hydrated.
  final String? lastHydrated;
  /// Name of the integration.
  final String? name;
  /// Integration status.
  final String? status;
  /// When the integration was last updated.
  final String? updated;
  /// Use cases enabled for the integration.
  final List<Map<String, String>>? useCases;

  /// Creates a new [GetZeroTrustCasbIntegrationResult].
  /// [accountId] Optional.
  /// [application] Optional.
  /// [authMethod] The integration's authentication method.
  /// [authorizationLink] Authorization link for the integration.
  /// [created] When the integration was created.
  /// [credentialsExpiry] Credentials expiry time.
  /// [dlpProfiles] DLP Profiles enabled for the integration.
  /// [filter] Optional.
  /// [healthDetails] Health details with remediation hints.
  /// [id] Integration ID to look up. Exactly one of `id` or `filter` must be configured.
  /// [isPaused] Whether the user paused the integration.
  /// [lastHydrated] Last time the integration was hydrated.
  /// [name] Name of the integration.
  /// [status] Integration status.
  /// [updated] When the integration was last updated.
  /// [useCases] Use cases enabled for the integration.
  const GetZeroTrustCasbIntegrationResult({
    this.accountId,
    this.application,
    this.authMethod,
    this.authorizationLink,
    this.created,
    this.credentialsExpiry,
    this.dlpProfiles,
    this.filter,
    this.healthDetails,
    this.id,
    this.isPaused,
    this.lastHydrated,
    this.name,
    this.status,
    this.updated,
    this.useCases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'application': ?application,
      'authMethod': ?authMethod,
      'authorizationLink': ?authorizationLink?.toMap(),
      'created': ?created,
      'credentialsExpiry': ?credentialsExpiry,
      'dlpProfiles': ?dlpProfiles,
      'filter': ?filter?.toMap(),
      'healthDetails': ?healthDetails,
      'id': ?id,
      'isPaused': ?isPaused,
      'lastHydrated': ?lastHydrated,
      'name': ?name,
      'status': ?status,
      'updated': ?updated,
      'useCases': ?useCases,
    };
  }

  factory GetZeroTrustCasbIntegrationResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbIntegrationResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      application: (() { final guardedValue = map['application']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      authMethod: (() { final guardedValue = map['authMethod']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      authorizationLink: (() { final guardedValue = map['authorizationLink']; if (guardedValue == null) return null; return GetZeroTrustCasbIntegrationAuthorizationLink.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentialsExpiry: (() { final guardedValue = map['credentialsExpiry']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dlpProfiles: (() { final guardedValue = map['dlpProfiles']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustCasbIntegrationFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      healthDetails: (() { final guardedValue = map['healthDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isPaused: (() { final guardedValue = map['isPaused']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastHydrated: (() { final guardedValue = map['lastHydrated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      useCases: (() { final guardedValue = map['useCases']; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>()); })(),
    );
  }
}
