// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_secret_secret.dart';

/// Result data returned by getFrontdoorSecret.
class GetFrontdoorSecretResult {
  /// Specifies the ID of the Front Door Profile within which this Front Door Secret exists.
  final String cdnFrontdoorProfileId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String profileName;
  final String resourceGroupName;
  /// A `secret` block as defined below.
  final List<GetFrontdoorSecretSecret> secrets;

  /// Creates a new [GetFrontdoorSecretResult].
  /// [cdnFrontdoorProfileId] Specifies the ID of the Front Door Profile within which this Front Door Secret exists.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [profileName] Required.
  /// [resourceGroupName] Required.
  /// [secrets] A `secret` block as defined below.
  GetFrontdoorSecretResult({
    required this.cdnFrontdoorProfileId,
    required this.id,
    required this.name,
    required this.profileName,
    required this.resourceGroupName,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': cdnFrontdoorProfileId,
      'id': id,
      'name': name,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'secrets': pulumi.Input.encodeList<GetFrontdoorSecretSecret, Map<String, dynamic>>(secrets, (value) => value.toMap()),
    };
  }

  factory GetFrontdoorSecretResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorSecretResult(
      cdnFrontdoorProfileId: map['cdnFrontdoorProfileId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      secrets: pulumi.Input.decodeList<GetFrontdoorSecretSecret>(map['secrets']!, (value) => GetFrontdoorSecretSecret.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

