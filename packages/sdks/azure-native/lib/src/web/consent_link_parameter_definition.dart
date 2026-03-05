// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Consent link definition
class ConsentLinkParameterDefinition {
  /// AAD OID (user or group) if the principal type is ActiveDirectory. MSA PUID if the principal type is MicrosoftAccount
  final pulumi.Input<String>? objectId;
  /// Name of the parameter in the connection provider's OAuth settings
  final pulumi.Input<String>? parameterName;
  /// Name of the parameter in the connection provider's OAuth settings
  final pulumi.Input<String>? redirectUrl;
  /// The tenant id
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ConsentLinkParameterDefinition].
  /// [objectId] AAD OID (user or group) if the principal type is ActiveDirectory. MSA PUID if the principal type is MicrosoftAccount
  /// [parameterName] Name of the parameter in the connection provider's OAuth settings
  /// [redirectUrl] Name of the parameter in the connection provider's OAuth settings
  /// [tenantId] The tenant id
  ConsentLinkParameterDefinition({
    this.objectId,
    this.parameterName,
    this.redirectUrl,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': ?objectId,
      'parameterName': ?parameterName,
      'redirectUrl': ?redirectUrl,
      'tenantId': ?tenantId,
    };
  }

  factory ConsentLinkParameterDefinition.fromMap(Map<String, dynamic> map) {
    return ConsentLinkParameterDefinition(
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterName: (() { final guardedValue = map['parameterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUrl: (() { final guardedValue = map['redirectUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

