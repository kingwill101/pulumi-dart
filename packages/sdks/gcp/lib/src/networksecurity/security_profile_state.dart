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
  final pulumi.Input<SecurityProfileCustomInterceptProfile>?
  customInterceptProfile;

  /// The configuration for defining the Mirroring Endpoint Group used to
  /// mirror traffic to third-party collectors.
  /// Structure is documented below.
  final pulumi.Input<SecurityProfileCustomMirroringProfile>?
  customMirroringProfile;

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
  final pulumi.Input<SecurityProfileThreatPreventionProfile>?
  threatPreventionProfile;

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
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'pulumiLabels': ?pulumiLabels,
      'selfLink': ?selfLink,
      'threatPreventionProfile':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityProfileThreatPreventionProfile,
            Map<String, dynamic>
          >(threatPreventionProfile, (value) => value.toMap()),
      'type': ?type,
      'updateTime': ?updateTime,
      'urlFilteringProfile':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityProfileUrlFilteringProfile,
            Map<String, dynamic>
          >(urlFilteringProfile, (value) => value.toMap()),
    };
  }

  factory SecurityProfileState.fromMap(Map<String, dynamic> map) {
    return SecurityProfileState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
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
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      selfLink: (() {
        final guardedValue = map['selfLink'];
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
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
