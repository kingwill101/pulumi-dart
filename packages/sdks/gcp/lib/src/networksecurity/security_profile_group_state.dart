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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? customInterceptProfile,
    pulumi.Output<String>? customMirroringProfile,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? threatPreventionProfile,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? urlFilteringProfile,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      customInterceptProfile = pulumi.Input.asOptionalInput<String>(customInterceptProfile),
      customMirroringProfile = pulumi.Input.asOptionalInput<String>(customMirroringProfile),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      threatPreventionProfile = pulumi.Input.asOptionalInput<String>(threatPreventionProfile),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      urlFilteringProfile = pulumi.Input.asOptionalInput<String>(urlFilteringProfile);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      customInterceptProfile: map['customInterceptProfile'] == null ? null : pulumi.Output.create<String>(map['customInterceptProfile'] as String),
      customMirroringProfile: map['customMirroringProfile'] == null ? null : pulumi.Output.create<String>(map['customMirroringProfile'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      threatPreventionProfile: map['threatPreventionProfile'] == null ? null : pulumi.Output.create<String>(map['threatPreventionProfile'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      urlFilteringProfile: map['urlFilteringProfile'] == null ? null : pulumi.Output.create<String>(map['urlFilteringProfile'] as String),
    );
  }
}

