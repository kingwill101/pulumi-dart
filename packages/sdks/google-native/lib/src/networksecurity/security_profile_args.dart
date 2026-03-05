// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_type.dart';
import 'threat_prevention_profile.dart';

/// {@template pulumi_networksecurity_v1beta1_security_profile_args_doc}
/// The set of arguments for SecurityProfile.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_security_profile_args_doc}
class SecurityProfileArgs {
  /// Optional. An optional description of the profile. Max length 512 characters.
  final pulumi.Input<String>? description;
  /// Optional. Labels as key value pairs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Immutable. Identifier. Name of the SecurityProfile resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfiles/{security_profile}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Required. Short name of the SecurityProfile resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "security_profile1".
  final pulumi.Input<String> securityProfileId;
  /// The threat prevention configuration for the SecurityProfile.
  final pulumi.Input<ThreatPreventionProfile>? threatPreventionProfile;
  /// Immutable. The single ProfileType that the SecurityProfile resource configures.
  final pulumi.Input<SecurityProfileType>? type;

  /// Creates a new [SecurityProfileArgs].
  /// [description] Optional. An optional description of the profile. Max length 512 characters.
  /// [labels] Optional. Labels as key value pairs.
  /// [location] Optional.
  /// [name] Immutable. Identifier. Name of the SecurityProfile resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfiles/{security_profile}`.
  /// [organizationId] Required.
  /// [securityProfileId] Required. Short name of the SecurityProfile resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "security_profile1".
  /// [threatPreventionProfile] The threat prevention configuration for the SecurityProfile.
  /// [type] Immutable. The single ProfileType that the SecurityProfile resource configures.
  SecurityProfileArgs({
    this.description,
    this.labels,
    this.location,
    this.name,
    required this.organizationId,
    required this.securityProfileId,
    this.threatPreventionProfile,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'organizationId': organizationId,
      'securityProfileId': securityProfileId,
      'threatPreventionProfile': ?pulumi.Input.mapOptionalInputValue<ThreatPreventionProfile, Map<String, dynamic>>(threatPreventionProfile, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<SecurityProfileType, String>(type, (value) => value.wireValue),
    };
  }

  factory SecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return SecurityProfileArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      securityProfileId: pulumi.Input.fromValue(map['securityProfileId'] as String),
      threatPreventionProfile: (() { final guardedValue = map['threatPreventionProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThreatPreventionProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityProfileType.fromValue(guardedValue as String)); })(),
    );
  }
}

