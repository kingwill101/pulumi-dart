// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_custom_actions.dart';

/// Input properties used for looking up and filtering CustomTargetType resources.
class CustomTargetTypeState {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Time at which the `CustomTargetType` was created.
  final pulumi.Input<String>? createTime;
  /// Configures render and deploy for the `CustomTargetType` using Skaffold custom actions.
  /// Structure is documented below.
  final pulumi.Input<CustomTargetTypeCustomActions>? customActions;
  /// Resource id of the `CustomTargetType`.
  final pulumi.Input<String>? customTargetTypeId;
  /// Description of the `CustomTargetType`. Max length is 255 characters.
  final pulumi.Input<String>? description;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The weak etag of the `CustomTargetType` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the source.
  final pulumi.Input<String>? location;
  /// Name of the `CustomTargetType`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Unique identifier of the `CustomTargetType`.
  final pulumi.Input<String>? uid;
  /// Time at which the `CustomTargetType` was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [CustomTargetTypeState].
  /// [annotations] User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [createTime] Time at which the `CustomTargetType` was created.
  /// [customActions] Configures render and deploy for the `CustomTargetType` using Skaffold custom actions.
  /// [customTargetTypeId] Resource id of the `CustomTargetType`.
  /// [description] Description of the `CustomTargetType`. Max length is 255 characters.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] The weak etag of the `CustomTargetType` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  /// [location] The location of the source.
  /// [name] Name of the `CustomTargetType`.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [uid] Unique identifier of the `CustomTargetType`.
  /// [updateTime] Time at which the `CustomTargetType` was updated.
  CustomTargetTypeState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? createTime,
    pulumi.Output<CustomTargetTypeCustomActions>? customActions,
    pulumi.Output<String>? customTargetTypeId,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      customActions = pulumi.Input.asOptionalInput<CustomTargetTypeCustomActions>(customActions),
      customTargetTypeId = pulumi.Input.asOptionalInput<String>(customTargetTypeId),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'customActions': ?pulumi.Input.mapOptionalInputValue<CustomTargetTypeCustomActions, Map<String, dynamic>>(customActions, (value) => value.toMap()),
      'customTargetTypeId': ?customTargetTypeId,
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory CustomTargetTypeState.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      customActions: map['customActions'] == null ? null : pulumi.Output.create<CustomTargetTypeCustomActions>(CustomTargetTypeCustomActions.fromMap((map['customActions'] as Map).cast<String, dynamic>())),
      customTargetTypeId: map['customTargetTypeId'] == null ? null : pulumi.Output.create<String>(map['customTargetTypeId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

