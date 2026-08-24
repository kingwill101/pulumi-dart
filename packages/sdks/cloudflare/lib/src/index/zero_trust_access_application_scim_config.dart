// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_application_scim_config_authentication.dart';
import 'zero_trust_access_application_scim_config_mapping.dart';

class ZeroTrustAccessApplicationScimConfig {
  /// Attributes for configuring HTTP Basic authentication scheme for SCIM provisioning to an application.
  final pulumi.Input<ZeroTrustAccessApplicationScimConfigAuthentication?>? authentication;
  /// If false, propagates DELETE requests to the target application for SCIM resources. If true, sets 'active' to false on the SCIM resource. Note: Some targets do not support DELETE operations.
  final pulumi.Input<bool?>? deactivateOnDelete;
  /// Whether SCIM provisioning is turned on for this application.
  final pulumi.Input<bool?>? enabled;
  /// The UID of the IdP to use as the source for SCIM resources to provision to this application.
  final pulumi.Input<String> idpUid;
  /// A list of mappings to apply to SCIM resources before provisioning them in this application. These can transform or filter the resources to be provisioned.
  final pulumi.Input<List<ZeroTrustAccessApplicationScimConfigMapping>?>? mappings;
  /// The base URI for the application's SCIM-compatible API.
  final pulumi.Input<String> remoteUri;

  /// Creates a new [ZeroTrustAccessApplicationScimConfig].
  /// [authentication] Attributes for configuring HTTP Basic authentication scheme for SCIM provisioning to an application.
  /// [deactivateOnDelete] If false, propagates DELETE requests to the target application for SCIM resources. If true, sets 'active' to false on the SCIM resource. Note: Some targets do not support DELETE operations.
  /// [enabled] Whether SCIM provisioning is turned on for this application.
  /// [idpUid] The UID of the IdP to use as the source for SCIM resources to provision to this application.
  /// [mappings] A list of mappings to apply to SCIM resources before provisioning them in this application. These can transform or filter the resources to be provisioned.
  /// [remoteUri] The base URI for the application's SCIM-compatible API.
  const ZeroTrustAccessApplicationScimConfig({
    this.authentication,
    this.deactivateOnDelete,
    this.enabled,
    required this.idpUid,
    this.mappings,
    required this.remoteUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationScimConfigAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'deactivateOnDelete': ?deactivateOnDelete,
      'enabled': ?enabled,
      'idpUid': idpUid,
      'mappings': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessApplicationScimConfigMapping>, List<Map<String, dynamic>>>(mappings, (value) => pulumi.Input.encodeList<ZeroTrustAccessApplicationScimConfigMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remoteUri': remoteUri,
    };
  }

  factory ZeroTrustAccessApplicationScimConfig.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationScimConfig(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationScimConfigAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deactivateOnDelete: (() { final guardedValue = map['deactivateOnDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idpUid: pulumi.Input.fromValue(map['idpUid'] as String),
      mappings: (() { final guardedValue = map['mappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessApplicationScimConfigMapping>(guardedValue, (value) => ZeroTrustAccessApplicationScimConfigMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      remoteUri: pulumi.Input.fromValue(map['remoteUri'] as String),
    );
  }
}
