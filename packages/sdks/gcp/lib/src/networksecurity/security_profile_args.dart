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
  final pulumi.Input<SecurityProfileCustomInterceptProfile>? customInterceptProfile;
  /// The configuration for defining the Mirroring Endpoint Group used to
  /// mirror traffic to third-party collectors.
  /// Structure is documented below.
  final pulumi.Input<SecurityProfileCustomMirroringProfile>? customMirroringProfile;
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
  final pulumi.Input<SecurityProfileThreatPreventionProfile>? threatPreventionProfile;
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
    pulumi.Output<SecurityProfileCustomInterceptProfile>? customInterceptProfile,
    pulumi.Output<SecurityProfileCustomMirroringProfile>? customMirroringProfile,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<SecurityProfileThreatPreventionProfile>? threatPreventionProfile,
    required pulumi.Output<String> type,
    pulumi.Output<SecurityProfileUrlFilteringProfile>? urlFilteringProfile,
  }) :
      customInterceptProfile = pulumi.Input.asOptionalInput<SecurityProfileCustomInterceptProfile>(customInterceptProfile),
      customMirroringProfile = pulumi.Input.asOptionalInput<SecurityProfileCustomMirroringProfile>(customMirroringProfile),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      threatPreventionProfile = pulumi.Input.asOptionalInput<SecurityProfileThreatPreventionProfile>(threatPreventionProfile),
      type = pulumi.Input.asInput<String>(type),
      urlFilteringProfile = pulumi.Input.asOptionalInput<SecurityProfileUrlFilteringProfile>(urlFilteringProfile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customInterceptProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfileCustomInterceptProfile, Map<String, dynamic>>(customInterceptProfile, (value) => value.toMap()),
      'customMirroringProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfileCustomMirroringProfile, Map<String, dynamic>>(customMirroringProfile, (value) => value.toMap()),
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'threatPreventionProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfileThreatPreventionProfile, Map<String, dynamic>>(threatPreventionProfile, (value) => value.toMap()),
      'type': type,
      'urlFilteringProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfileUrlFilteringProfile, Map<String, dynamic>>(urlFilteringProfile, (value) => value.toMap()),
    };
  }

  factory SecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return SecurityProfileArgs(
      customInterceptProfile: map['customInterceptProfile'] == null ? null : pulumi.Output.create<SecurityProfileCustomInterceptProfile>(SecurityProfileCustomInterceptProfile.fromMap((map['customInterceptProfile'] as Map).cast<String, dynamic>())),
      customMirroringProfile: map['customMirroringProfile'] == null ? null : pulumi.Output.create<SecurityProfileCustomMirroringProfile>(SecurityProfileCustomMirroringProfile.fromMap((map['customMirroringProfile'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      threatPreventionProfile: map['threatPreventionProfile'] == null ? null : pulumi.Output.create<SecurityProfileThreatPreventionProfile>(SecurityProfileThreatPreventionProfile.fromMap((map['threatPreventionProfile'] as Map).cast<String, dynamic>())),
      type: pulumi.Output.create<String>(map['type'] as String),
      urlFilteringProfile: map['urlFilteringProfile'] == null ? null : pulumi.Output.create<SecurityProfileUrlFilteringProfile>(SecurityProfileUrlFilteringProfile.fromMap((map['urlFilteringProfile'] as Map).cast<String, dynamic>())),
    );
  }
}

