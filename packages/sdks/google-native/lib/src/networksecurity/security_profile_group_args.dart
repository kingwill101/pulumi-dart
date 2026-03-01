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
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> securityProfileGroupId,
    pulumi.Output<String>? threatPreventionProfile,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      securityProfileGroupId = pulumi.Input.asInput<String>(securityProfileGroupId),
      threatPreventionProfile = pulumi.Input.asOptionalInput<String>(threatPreventionProfile);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      securityProfileGroupId: pulumi.Output.create<String>(map['securityProfileGroupId'] as String),
      threatPreventionProfile: map['threatPreventionProfile'] == null ? null : pulumi.Output.create<String>(map['threatPreventionProfile'] as String),
    );
  }
}

