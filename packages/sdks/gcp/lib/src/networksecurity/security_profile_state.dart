// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_custom_intercept_profile.dart';
import 'security_profile_custom_mirroring_profile.dart';
import 'security_profile_threat_prevention_profile.dart';
import 'security_profile_url_filtering_profile.dart';

/// Input properties used for looking up and filtering SecurityProfile resources.
class SecurityProfileState {
  /// Time the security profile was created in UTC.
  final pulumi.Input<String>? createTime;
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
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// This checksum is computed by the server based on the value of other fields,
  /// and may be sent on update and delete requests to ensure the client has an up-to-date
  /// value before proceeding.
  final pulumi.Input<String>? etag;
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Server-defined URL of this resource.
  final pulumi.Input<String>? selfLink;
  /// The threat prevention configuration for the security profile.
  /// Structure is documented below.
  final pulumi.Input<SecurityProfileThreatPreventionProfile>? threatPreventionProfile;
  /// The type of security profile.
  /// Possible values are: `THREAT_PREVENTION`, `URL_FILTERING`, `CUSTOM_MIRRORING`, `CUSTOM_INTERCEPT`.
  final pulumi.Input<String>? type;
  /// Time the security profile was updated in UTC.
  final pulumi.Input<String>? updateTime;
  /// The url filtering configuration for the security profile.
  /// Structure is documented below.
  final pulumi.Input<SecurityProfileUrlFilteringProfile>? urlFilteringProfile;

  /// Creates a new [SecurityProfileState].
  /// [createTime] Time the security profile was created in UTC.
  /// [customInterceptProfile] The configuration for defining the Intercept Endpoint Group used to
  /// [customMirroringProfile] The configuration for defining the Mirroring Endpoint Group used to
  /// [description] An optional description of the security profile. The Max length is 512 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] This checksum is computed by the server based on the value of other fields,
  /// [labels] A map of key/value label pairs to assign to the resource.
  /// [location] The location of the security profile.
  /// [name] The name of the security profile resource.
  /// [parent] The name of the parent this security profile belongs to.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [selfLink] Server-defined URL of this resource.
  /// [threatPreventionProfile] The threat prevention configuration for the security profile.
  /// [type] The type of security profile.
  /// [updateTime] Time the security profile was updated in UTC.
  /// [urlFilteringProfile] The url filtering configuration for the security profile.
  SecurityProfileState({
    this.createTime,
    this.customInterceptProfile,
    this.customMirroringProfile,
    this.description,
    this.effectiveLabels,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.parent,
    this.pulumiLabels,
    this.selfLink,
    this.threatPreventionProfile,
    this.type,
    this.updateTime,
    this.urlFilteringProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'customInterceptProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfileCustomInterceptProfile, Map<String, dynamic>>(customInterceptProfile, (value) => value.toMap()),
      'customMirroringProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfileCustomMirroringProfile, Map<String, dynamic>>(customMirroringProfile, (value) => value.toMap()),
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'pulumiLabels': ?pulumiLabels,
      'selfLink': ?selfLink,
      'threatPreventionProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfileThreatPreventionProfile, Map<String, dynamic>>(threatPreventionProfile, (value) => value.toMap()),
      'type': ?type,
      'updateTime': ?updateTime,
      'urlFilteringProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfileUrlFilteringProfile, Map<String, dynamic>>(urlFilteringProfile, (value) => value.toMap()),
    };
  }

  factory SecurityProfileState.fromMap(Map<String, dynamic> map) {
    return SecurityProfileState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      customInterceptProfile: map['customInterceptProfile'] == null ? null : (SecurityProfileCustomInterceptProfile.fromMap((map['customInterceptProfile']! as Map).cast<String, dynamic>())).input(),
      customMirroringProfile: map['customMirroringProfile'] == null ? null : (SecurityProfileCustomMirroringProfile.fromMap((map['customMirroringProfile']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      threatPreventionProfile: map['threatPreventionProfile'] == null ? null : (SecurityProfileThreatPreventionProfile.fromMap((map['threatPreventionProfile']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      urlFilteringProfile: map['urlFilteringProfile'] == null ? null : (SecurityProfileUrlFilteringProfile.fromMap((map['urlFilteringProfile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

