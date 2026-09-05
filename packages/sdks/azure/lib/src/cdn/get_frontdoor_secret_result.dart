// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_secret_secret.dart';

/// Result data returned by getFrontdoorSecret.
class GetFrontdoorSecretResult {
  /// Specifies the ID of the Front Door Profile within which this Front Door Secret exists.
  final String? cdnFrontdoorProfileId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? profileName;
  final String? resourceGroupName;
  /// A `secret` block as defined below.
  final List<GetFrontdoorSecretSecret>? secrets;

  /// Creates a new [GetFrontdoorSecretResult].
  /// [cdnFrontdoorProfileId] Specifies the ID of the Front Door Profile within which this Front Door Secret exists.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [profileName] Optional.
  /// [resourceGroupName] Optional.
  /// [secrets] A `secret` block as defined below.
  const GetFrontdoorSecretResult({
    this.cdnFrontdoorProfileId,
    this.id,
    this.name,
    this.profileName,
    this.resourceGroupName,
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': ?cdnFrontdoorProfileId,
      'id': ?id,
      'name': ?name,
      'profileName': ?profileName,
      'resourceGroupName': ?resourceGroupName,
      'secrets': ?(() { final guardedValue = secrets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFrontdoorSecretSecret, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetFrontdoorSecretResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorSecretResult(
      cdnFrontdoorProfileId: (() { final guardedValue = map['cdnFrontdoorProfileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileName: (() { final guardedValue = map['profileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFrontdoorSecretSecret>(guardedValue, (value) => GetFrontdoorSecretSecret.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
