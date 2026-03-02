// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_security_profile_group_security_profile_group_args_doc}
/// The set of arguments for SecurityProfileGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_security_profile_group_security_profile_group_args_doc}
class SecurityProfileGroupArgs {
  /// Reference to a SecurityProfile with the CustomIntercept configuration.
  final pulumi.Input<String>? customInterceptProfile;
  /// Reference to a SecurityProfile with the custom mirroring configuration for the SecurityProfileGroup.
  final pulumi.Input<String>? customMirroringProfile;
  /// An optional description of the profile. The Max length is 512 characters.
  final pulumi.Input<String>? description;
  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the security profile group.
  /// The default value is `global`.
  final pulumi.Input<String>? location;
  /// The name of the security profile group resource.
  final pulumi.Input<String>? name;
  /// The name of the parent this security profile group belongs to.
  /// Format: organizations/{organization_id}.
  final pulumi.Input<String>? parent;
  /// Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  final pulumi.Input<String>? threatPreventionProfile;
  /// Reference to a SecurityProfile with the URL filtering configuration for the SecurityProfileGroup.
  final pulumi.Input<String>? urlFilteringProfile;

  /// Creates a new [SecurityProfileGroupArgs].
  /// [customInterceptProfile] Reference to a SecurityProfile with the CustomIntercept configuration.
  /// [customMirroringProfile] Reference to a SecurityProfile with the custom mirroring configuration for the SecurityProfileGroup.
  /// [description] An optional description of the profile. The Max length is 512 characters.
  /// [labels] A map of key/value label pairs to assign to the resource.
  /// [location] The location of the security profile group.
  /// [name] The name of the security profile group resource.
  /// [parent] The name of the parent this security profile group belongs to.
  /// [threatPreventionProfile] Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  /// [urlFilteringProfile] Reference to a SecurityProfile with the URL filtering configuration for the SecurityProfileGroup.
  SecurityProfileGroupArgs({
    this.customInterceptProfile,
    this.customMirroringProfile,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.parent,
    this.threatPreventionProfile,
    this.urlFilteringProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customInterceptProfile': ?customInterceptProfile,
      'customMirroringProfile': ?customMirroringProfile,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'threatPreventionProfile': ?threatPreventionProfile,
      'urlFilteringProfile': ?urlFilteringProfile,
    };
  }

  factory SecurityProfileGroupArgs.fromMap(Map<String, dynamic> map) {
    return SecurityProfileGroupArgs(
      customInterceptProfile: map['customInterceptProfile'] == null ? null : (map['customInterceptProfile'] as String).input(),
      customMirroringProfile: map['customMirroringProfile'] == null ? null : (map['customMirroringProfile'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      threatPreventionProfile: map['threatPreventionProfile'] == null ? null : (map['threatPreventionProfile'] as String).input(),
      urlFilteringProfile: map['urlFilteringProfile'] == null ? null : (map['urlFilteringProfile'] as String).input(),
    );
  }
}

