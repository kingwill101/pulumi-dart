// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';

/// RCM proxy details.
class RcmProxyDetailsResponse {
  /// The RCM proxy Bios Id.
  final pulumi.Input<String> biosId;

  /// The client authentication type.
  final pulumi.Input<String> clientAuthenticationType;

  /// The fabric object Id.
  final pulumi.Input<String> fabricObjectId;

  /// The RCM proxy Fqdn.
  final pulumi.Input<String> fqdn;

  /// The health of the RCM proxy.
  final pulumi.Input<String> health;

  /// The health errors.
  final pulumi.Input<List<HealthErrorResponse>> healthErrors;

  /// The RCM proxy Id.
  final pulumi.Input<String> id;

  /// The last heartbeat received from the RCM proxy.
  final pulumi.Input<String> lastHeartbeatUtc;

  /// The RCM proxy name.
  final pulumi.Input<String> name;

  /// The version.
  final pulumi.Input<String> version;

  /// Creates a new [RcmProxyDetailsResponse].
  /// [biosId] The RCM proxy Bios Id.
  /// [clientAuthenticationType] The client authentication type.
  /// [fabricObjectId] The fabric object Id.
  /// [fqdn] The RCM proxy Fqdn.
  /// [health] The health of the RCM proxy.
  /// [healthErrors] The health errors.
  /// [id] The RCM proxy Id.
  /// [lastHeartbeatUtc] The last heartbeat received from the RCM proxy.
  /// [name] The RCM proxy name.
  /// [version] The version.
  RcmProxyDetailsResponse({
    required this.biosId,
    required this.clientAuthenticationType,
    required this.fabricObjectId,
    required this.fqdn,
    required this.health,
    required this.healthErrors,
    required this.id,
    required this.lastHeartbeatUtc,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biosId': biosId,
      'clientAuthenticationType': clientAuthenticationType,
      'fabricObjectId': fabricObjectId,
      'fqdn': fqdn,
      'health': health,
      'healthErrors':
          pulumi.Input.mapInputValue<
            List<HealthErrorResponse>,
            List<Map<String, dynamic>>
          >(
            healthErrors,
            (value) =>
                pulumi.Input.encodeList<
                  HealthErrorResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': id,
      'lastHeartbeatUtc': lastHeartbeatUtc,
      'name': name,
      'version': version,
    };
  }

  factory RcmProxyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RcmProxyDetailsResponse(
      biosId: pulumi.Input.fromValue(map['biosId'] as String),
      clientAuthenticationType: pulumi.Input.fromValue(
        map['clientAuthenticationType'] as String,
      ),
      fabricObjectId: pulumi.Input.fromValue(map['fabricObjectId'] as String),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      health: pulumi.Input.fromValue(map['health'] as String),
      healthErrors: pulumi.Input.fromValue(
        pulumi.Input.decodeList<HealthErrorResponse>(
          map['healthErrors']!,
          (value) => HealthErrorResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastHeartbeatUtc: pulumi.Input.fromValue(
        map['lastHeartbeatUtc'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
