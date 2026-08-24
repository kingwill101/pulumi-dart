// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_application_scim_config_authentication.dart';
import 'get_zero_trust_access_application_scim_config_mapping.dart';

class GetZeroTrustAccessApplicationScimConfig {
  /// Attributes for configuring HTTP Basic authentication scheme for SCIM provisioning to an application.
  final pulumi.Input<GetZeroTrustAccessApplicationScimConfigAuthentication> authentication;
  /// If false, propagates DELETE requests to the target application for SCIM resources. If true, sets 'active' to false on the SCIM resource. Note: Some targets do not support DELETE operations.
  final pulumi.Input<bool> deactivateOnDelete;
  /// Whether SCIM provisioning is turned on for this application.
  final pulumi.Input<bool> enabled;
  /// The UID of the IdP to use as the source for SCIM resources to provision to this application.
  final pulumi.Input<String> idpUid;
  /// A list of mappings to apply to SCIM resources before provisioning them in this application. These can transform or filter the resources to be provisioned.
  final pulumi.Input<List<GetZeroTrustAccessApplicationScimConfigMapping>> mappings;
  /// The base URI for the application's SCIM-compatible API.
  final pulumi.Input<String> remoteUri;

  /// Creates a new [GetZeroTrustAccessApplicationScimConfig].
  /// [authentication] Attributes for configuring HTTP Basic authentication scheme for SCIM provisioning to an application.
  /// [deactivateOnDelete] If false, propagates DELETE requests to the target application for SCIM resources. If true, sets 'active' to false on the SCIM resource. Note: Some targets do not support DELETE operations.
  /// [enabled] Whether SCIM provisioning is turned on for this application.
  /// [idpUid] The UID of the IdP to use as the source for SCIM resources to provision to this application.
  /// [mappings] A list of mappings to apply to SCIM resources before provisioning them in this application. These can transform or filter the resources to be provisioned.
  /// [remoteUri] The base URI for the application's SCIM-compatible API.
  const GetZeroTrustAccessApplicationScimConfig({
    required this.authentication,
    required this.deactivateOnDelete,
    required this.enabled,
    required this.idpUid,
    required this.mappings,
    required this.remoteUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationScimConfigAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'deactivateOnDelete': deactivateOnDelete,
      'enabled': enabled,
      'idpUid': idpUid,
      'mappings': pulumi.Input.mapInputValue<List<GetZeroTrustAccessApplicationScimConfigMapping>, List<Map<String, dynamic>>>(mappings, (value) => pulumi.Input.encodeList<GetZeroTrustAccessApplicationScimConfigMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remoteUri': remoteUri,
    };
  }

  factory GetZeroTrustAccessApplicationScimConfig.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationScimConfig(
      authentication: pulumi.Input.fromValue(GetZeroTrustAccessApplicationScimConfigAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      deactivateOnDelete: pulumi.Input.fromValue(map['deactivateOnDelete'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      idpUid: pulumi.Input.fromValue(map['idpUid'] as String),
      mappings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessApplicationScimConfigMapping>(map['mappings']!, (value) => GetZeroTrustAccessApplicationScimConfigMapping.fromMap((value as Map).cast<String, dynamic>()))),
      remoteUri: pulumi.Input.fromValue(map['remoteUri'] as String),
    );
  }
}
