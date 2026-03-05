// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_security_profile_group_args_doc}
/// The set of arguments for SecurityProfileGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_security_profile_group_args_doc}
class SecurityProfileGroupArgs {
  /// Optional. An optional description of the profile group. Max length 2048 characters.
  final pulumi.Input<String>? description;
  /// Optional. Labels as key value pairs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Immutable. Identifier. Name of the SecurityProfileGroup resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfileGroups/{security_profile_group}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Required. Short name of the SecurityProfileGroup resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "security_profile_group1".
  final pulumi.Input<String> securityProfileGroupId;
  /// Optional. Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  final pulumi.Input<String>? threatPreventionProfile;

  /// Creates a new [SecurityProfileGroupArgs].
  /// [description] Optional. An optional description of the profile group. Max length 2048 characters.
  /// [labels] Optional. Labels as key value pairs.
  /// [location] Optional.
  /// [name] Immutable. Identifier. Name of the SecurityProfileGroup resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfileGroups/{security_profile_group}`.
  /// [organizationId] Required.
  /// [securityProfileGroupId] Required. Short name of the SecurityProfileGroup resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "security_profile_group1".
  /// [threatPreventionProfile] Optional. Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  SecurityProfileGroupArgs({
    this.description,
    this.labels,
    this.location,
    this.name,
    required this.organizationId,
    required this.securityProfileGroupId,
    this.threatPreventionProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'organizationId': organizationId,
      'securityProfileGroupId': securityProfileGroupId,
      'threatPreventionProfile': ?threatPreventionProfile,
    };
  }

  factory SecurityProfileGroupArgs.fromMap(Map<String, dynamic> map) {
    return SecurityProfileGroupArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      securityProfileGroupId: pulumi.Input.fromValue(map['securityProfileGroupId'] as String),
      threatPreventionProfile: (() { final guardedValue = map['threatPreventionProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

