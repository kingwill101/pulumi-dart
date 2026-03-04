// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_custom_intercept_profile.dart';
import 'security_profile_custom_mirroring_profile.dart';
import 'security_profile_threat_prevention_profile.dart';
import 'security_profile_url_filtering_profile.dart';

/// {@template pulumi_networksecurity_security_profile_security_profile_args_doc}
/// The set of arguments for SecurityProfile.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_security_profile_security_profile_args_doc}
class SecurityProfileArgs {
  /// The configuration for defining the Intercept Endpoint Group used to
  /// intercept traffic to third-party firewall appliances.
  /// Structure is documented below.
  final pulumi.Input<SecurityProfileCustomInterceptProfile>?
  customInterceptProfile;

  /// The configuration for defining the Mirroring Endpoint Group used to
  /// mirror traffic to third-party collectors.
  /// Structure is documented below.
  final pulumi.Input<SecurityProfileCustomMirroringProfile>?
  customMirroringProfile;

  /// An optional description of the security profile. The Max length is 512 characters.
  final pulumi.Input<String>? description;

  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the security profile.
  /// The default value is `global`.
  final pulumi.Input<String>? location;

  /// The name of the security profile resource.
  final pulumi.Input<String>? name;

  /// The name of the parent this security profile belongs to.
  /// Format: organizations/{organization_id}.
  final pulumi.Input<String>? parent;

  /// The threat prevention configuration for the security profile.
  /// Structure is documented below.
  final pulumi.Input<SecurityProfileThreatPreventionProfile>?
  threatPreventionProfile;

  /// The type of security profile.
  /// Possible values are: `THREAT_PREVENTION`, `URL_FILTERING`, `CUSTOM_MIRRORING`, `CUSTOM_INTERCEPT`.
  final pulumi.Input<String> type;

  /// The url filtering configuration for the security profile.
  /// Structure is documented below.
  final pulumi.Input<SecurityProfileUrlFilteringProfile>? urlFilteringProfile;

  /// Creates a new [SecurityProfileArgs].
  /// [customInterceptProfile] The configuration for defining the Intercept Endpoint Group used to
  /// [customMirroringProfile] The configuration for defining the Mirroring Endpoint Group used to
  /// [description] An optional description of the security profile. The Max length is 512 characters.
  /// [labels] A map of key/value label pairs to assign to the resource.
  /// [location] The location of the security profile.
  /// [name] The name of the security profile resource.
  /// [parent] The name of the parent this security profile belongs to.
  /// [threatPreventionProfile] The threat prevention configuration for the security profile.
  /// [type] The type of security profile.
  /// [urlFilteringProfile] The url filtering configuration for the security profile.
  SecurityProfileArgs({
    this.customInterceptProfile,
    this.customMirroringProfile,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.parent,
    this.threatPreventionProfile,
    required this.type,
    this.urlFilteringProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customInterceptProfile':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityProfileCustomInterceptProfile,
            Map<String, dynamic>
          >(customInterceptProfile, (value) => value.toMap()),
      'customMirroringProfile':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityProfileCustomMirroringProfile,
            Map<String, dynamic>
          >(customMirroringProfile, (value) => value.toMap()),
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'threatPreventionProfile':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityProfileThreatPreventionProfile,
            Map<String, dynamic>
          >(threatPreventionProfile, (value) => value.toMap()),
      'type': type,
      'urlFilteringProfile':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityProfileUrlFilteringProfile,
            Map<String, dynamic>
          >(urlFilteringProfile, (value) => value.toMap()),
    };
  }

  factory SecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return SecurityProfileArgs(
      customInterceptProfile: (() {
        final guardedValue = map['customInterceptProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityProfileCustomInterceptProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      customMirroringProfile: (() {
        final guardedValue = map['customMirroringProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityProfileCustomMirroringProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      threatPreventionProfile: (() {
        final guardedValue = map['threatPreventionProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityProfileThreatPreventionProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      urlFilteringProfile: (() {
        final guardedValue = map['urlFilteringProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityProfileUrlFilteringProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
