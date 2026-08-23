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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of the profile. The Max length is 512 characters.
  final pulumi.Input<String>? description;
  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the security profile group.
  /// The default value is `global`.
  final pulumi.Input<String>? location;
  /// The name of the security profile group resource.
  final pulumi.Input<String>? name;
  /// The name of the parent this security profile group belongs to.
  /// Format: `organizations/{organization_id}` or `projects/{project_id}`.
  final pulumi.Input<String>? parent;
  /// Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  final pulumi.Input<String>? threatPreventionProfile;
  /// Reference to a SecurityProfile with the URL filtering configuration for the SecurityProfileGroup.
  final pulumi.Input<String>? urlFilteringProfile;

  /// Creates a new [SecurityProfileGroupArgs].
  /// [customInterceptProfile] Reference to a SecurityProfile with the CustomIntercept configuration.
  /// [customMirroringProfile] Reference to a SecurityProfile with the custom mirroring configuration for the SecurityProfileGroup.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of the profile. The Max length is 512 characters.
  /// [labels] A map of key/value label pairs to assign to the resource.
  /// [location] The location of the security profile group.
  /// [name] The name of the security profile group resource.
  /// [parent] The name of the parent this security profile group belongs to.
  /// [threatPreventionProfile] Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  /// [urlFilteringProfile] Reference to a SecurityProfile with the URL filtering configuration for the SecurityProfileGroup.
  const SecurityProfileGroupArgs({
    this.customInterceptProfile,
    this.customMirroringProfile,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      customInterceptProfile: (() { final guardedValue = map['customInterceptProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customMirroringProfile: (() { final guardedValue = map['customMirroringProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threatPreventionProfile: (() { final guardedValue = map['threatPreventionProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlFilteringProfile: (() { final guardedValue = map['urlFilteringProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
