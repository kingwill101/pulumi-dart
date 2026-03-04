// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityProfileGroup resources.
class SecurityProfileGroupState {
  /// Time the security profile group was created in UTC.
  final pulumi.Input<String>? createTime;

  /// Reference to a SecurityProfile with the CustomIntercept configuration.
  final pulumi.Input<String>? customInterceptProfile;

  /// Reference to a SecurityProfile with the custom mirroring configuration for the SecurityProfileGroup.
  final pulumi.Input<String>? customMirroringProfile;

  /// An optional description of the profile. The Max length is 512 characters.
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

  /// The location of the security profile group.
  /// The default value is `global`.
  final pulumi.Input<String>? location;

  /// The name of the security profile group resource.
  final pulumi.Input<String>? name;

  /// The name of the parent this security profile group belongs to.
  /// Format: organizations/{organization_id}.
  final pulumi.Input<String>? parent;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  final pulumi.Input<String>? threatPreventionProfile;

  /// Time the security profile group was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Reference to a SecurityProfile with the URL filtering configuration for the SecurityProfileGroup.
  final pulumi.Input<String>? urlFilteringProfile;

  /// Creates a new [SecurityProfileGroupState].
  /// [createTime] Time the security profile group was created in UTC.
  /// [customInterceptProfile] Reference to a SecurityProfile with the CustomIntercept configuration.
  /// [customMirroringProfile] Reference to a SecurityProfile with the custom mirroring configuration for the SecurityProfileGroup.
  /// [description] An optional description of the profile. The Max length is 512 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] This checksum is computed by the server based on the value of other fields,
  /// [labels] A map of key/value label pairs to assign to the resource.
  /// [location] The location of the security profile group.
  /// [name] The name of the security profile group resource.
  /// [parent] The name of the parent this security profile group belongs to.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [threatPreventionProfile] Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  /// [updateTime] Time the security profile group was updated in UTC.
  /// [urlFilteringProfile] Reference to a SecurityProfile with the URL filtering configuration for the SecurityProfileGroup.
  SecurityProfileGroupState({
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
    this.threatPreventionProfile,
    this.updateTime,
    this.urlFilteringProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'customInterceptProfile': ?customInterceptProfile,
      'customMirroringProfile': ?customMirroringProfile,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'pulumiLabels': ?pulumiLabels,
      'threatPreventionProfile': ?threatPreventionProfile,
      'updateTime': ?updateTime,
      'urlFilteringProfile': ?urlFilteringProfile,
    };
  }

  factory SecurityProfileGroupState.fromMap(Map<String, dynamic> map) {
    return SecurityProfileGroupState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customInterceptProfile: (() {
        final guardedValue = map['customInterceptProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customMirroringProfile: (() {
        final guardedValue = map['customMirroringProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
      threatPreventionProfile: (() {
        final guardedValue = map['threatPreventionProfile'];
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
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
